function Main()
  SN = gg.choice({
  "瞬移",
  "强力占点",
  "吸人",
  "反吸",
  "皮肤",
  "其他",
  "退出脚本"
 }, nil, "")
  if SN == 1 then
    a()
  end
  if SN == 2 then
   b()
  end
  if SN == 3 then
   c()
   end
   if SN == 4 then
   d()
   end
  if SN == 5 then
   e()
   end
   if SN==6 then
   f()
end
  if SN == 7 then
   Exit()
  end
  XGCK = -1
end


function f()
SN = gg.choice({
	 "布鲁一套",
	 "兵王大",
	 "小李大",
	 "哈卡一套",
	 "退出脚本"
}, nil, "")
if SN==1 then
	 f1()  
end
if SN==2 then
	 f2()
end
if SN==3 then
	 f3()
end
if SN==4 then
	 f4()
end
if SN==5 then
	 Main()
end
FX1=0
end

function f1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("18;40::5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("40", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("9999999",gg.TYPE_FLOAT)
gg.toast("小冰:聚点")

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("18;9999999", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("18", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0.1",gg.TYPE_FLOAT)
gg.toast("小冰:距离")

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("100;100;100;100;15::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("100;100;100;100;15", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("99999999",gg.TYPE_FLOAT)
gg.toast("小冰:瞬击")

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("20;10::5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("20", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(200)
gg.editAll("9999999",gg.TYPE_FLOAT)
gg.toast("小冰:自瞄")
end

function f2()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("10101;101::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("101", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("106", gg.TYPE_DWORD)
    gg.toast("小冰:兵王大")
    gg.clearResults()
  end
  
  function f3()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("10301;301::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("301", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("303", gg.TYPE_DWORD)
    gg.toast("小冰:小李大")
    gg.clearResults()
  end
  
function f4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("5;0.5;0.15;1::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.15", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99999999", gg.TYPE_FLOAT)
gg.toast("小冰:全屏")
gg.clearResults()

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("5;0.5;0.15;1::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.15", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("999999999", gg.TYPE_FLOAT)
gg.toast("小冰:悬浮")
gg.clearResults()
end


function e()
SN = gg.choice({
	 "伊泽",
	 "大骑士",
	 "布鲁",
	 "卡牌",
	 "退出脚本"
}, nil, "")
if SN==1 then
	 e1()  
end
if SN==2 then
	 e2()
end
if SN==3 then
	 e3()
end
if SN==4 then
	 e4()
end
if SN==5 then
	 Main()
end

FX1=0
end

function e4()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1;111,501::8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("111501", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("111502", gg.TYPE_DWORD)
    gg.toast("卡牌")
    gg.clearResults()
  end
  
function e1()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1;111901::8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("111901", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("111903", gg.TYPE_DWORD)
    gg.toast("伊泽")
    gg.clearResults()
  end
  
  function e2()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1;110601::8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("110601", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("110603", gg.TYPE_DWORD)
    gg.toast("大骑士")
    gg.clearResults()
  end

function e3()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1;110801::8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("110801", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("110802", gg.TYPE_DWORD)
    gg.toast("布鲁")
    gg.clearResults()
  end
  
  
function d()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1001;1002;1007;1,457,101,449~1,657,101,449::29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then
    gg.toast("开启失败")
  else
    gg.searchNumber("1001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    j = gg.getResults(1)
    x = gg.getValues({
      [1] = {
        address = j[1].address - 76,
        flags = gg.TYPE_DWORD
      }
    })
    t = x[1].value
  end
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1;1;" .. t .. ";" .. t .. ";10~30;1::25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then
    gg.searchNumber("2;1;" .. t .. ";" .. t .. ";10~30;1::25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("5", gg.TYPE_DWORD)
  else
    gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("5", gg.TYPE_DWORD)
  end
end


function c()
SN = gg.choice({
	 "克强第一步",
	 "伊泽",
	 "布鲁",
	 "骑士吸人加无限大",
	 "卡牌",
	 "退出脚本"
}, nil, "")
if SN==1 then
	 c1()  
end
if SN==2 then
	 c2()
end
if SN==3 then
	 c3()
end
if SN==4 then
	 c4()
end
if SN==5 then
	 c5()
end
if SN==6 then
	 Main()
end

FX1=0
end

function c1()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("5;0.2;12;10::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("5;0.2;12;10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(58)
  gg.editAll("93134943749464943349;0;93134943749464943349;93134943749464943349", gg.TYPE_FLOAT)
  gg.toast("小冰:克强吸人")
  gg.clearResults()
end

function c2()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
 gg.searchNumber ("1905;1905;256::25", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("1905", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  local rs1 = gg.getResults(100)
  rs1[2].flags = gg.TYPE_DWORD
  rs1[2].value = 3604
  print('Edited: ', gg.setValues(rs1))
  gg.toast("伊泽")
end

function c3()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("805;805;256::25", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("805", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  local rs1 = gg.getResults(100)
  rs1[2].flags = gg.TYPE_DWORD
  rs1[2].value = 3604
  print('Edited: ', gg.setValues(rs1))
  gg.toast("布鲁")
  
  
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("802;802;256::25", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("802", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  local rs2 = gg.getResults(100)
  rs2[2].flags = gg.TYPE_DWORD
  rs2[2].value = 3604
  print('Edited: ', gg.setValues(rs2))
  
      gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("10801;801::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("801", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("805", gg.TYPE_DWORD)
    gg.clearResults()
 
end

function c5()
 gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1503;1503;256::25", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("1503", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  local rs1 = gg.getResults(100)
  rs1[2].flags = gg.TYPE_DWORD
  rs1[2].value = 3604
  print('Edited: ', gg.setValues(rs1))
  
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1502;1502;256::25", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("1502", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  local rs2 = gg.getResults(100)
  rs2[2].flags = gg.TYPE_DWORD
  rs2[2].value = 3604
  print('Edited: ', gg.setValues(rs2))
  
    gg.toast("卡牌")
end

function c4()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("602;602;256::25", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("602", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  local rs1 = gg.getResults(100)
  rs1[2].flags = gg.TYPE_DWORD
  rs1[2].value = 3604
  print('Edited: ', gg.setValues(rs1))
  
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("10601;601::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("601", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("605", gg.TYPE_DWORD)
    gg.toast("吸人无限大")
    gg.clearResults()
 end


function editData(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."瞬移成功")else gg.toast(qmnbn.."瞬移失败")end end end
function a()
SN = gg.choice({
	 "攻防战",
	 "据点战",
	 "护送战",
	 "退出脚本"
}, nil, "")
if SN==1 then
	 Main1()
end
if SN==2 then
	 Main20()
end
if SN==3 then
	 Main48()
end
if SN==4 then
	 Main()
end
FX1=0
end

function Main1()
SN = gg.choice({
	 "哈苏普特神殿",
	 "莫斯科",
	 "返回主页",
}, nil, "")
if SN==1 then
	 Main11()
end
if SN==2 then
	 Main15()
end
if SN==3 then
	 a()
end
FX1=0
end

function Main11()
SN = gg.choice({
	 "目标点A",
	 "目标点B",
	 "返回主页",
}, nil, "")
if SN==1 then
	 HS12()
end
if SN==2 then
	 HS13()
end
if SN==3 then
	 a()
end
FX1=0
end

function HS12()
editData(
{
{4},
{"哈苏普特神殿目标点A"},
{925353388,4},
{1060439283,-140,4},
{1036831949,-136,4},
{1061997773,-132,4},
{1069547520,-128,4},
},
{
{-1.92652273178,-92,16},
{-1.88648116589,-84,16},
{-2.67767214775,-76,16},
}
)
end

function HS13()
editData(
{
{4},
{"哈苏普特神殿目标点B"},
{925353388,4},
{1060439283,-140,4},
{1036831949,-136,4},
{1061997773,-132,4},
{1069547520,-128,4},
},
{
{2.50300264359,-92,16},
{1.98719215393,-84,16},
{3.38795304298,-76,16},
}
)
end

function HS14()
	 Main0()
end

function Main15()
SN = gg.choice({
	 "目标点A",
	 "目标点B",
	 "返回主页",
}, nil, "")
if SN==1 then
	 HS16()
end
if SN==2 then
	 HS17()
end
if SN==3 then
	 a()
end
FX1=0
end

function HS16()
editData(
{
{4},
{"莫斯科目标点A"},
{925353388,4},
{1060439283,-140,4},
{1036831949,-136,4},
{1061997773,-132,4},
{1069547520,-128,4},
},
{
{2.85948252678,-92,16},
{-1.76333284378,-84,16},
{-2.61094689369,-76,16},
}
)
end

function HS17()
editData(
{
{4},
{"莫斯科目标点B"},
{925353388,4},
{1060439283,-140,4},
{1036831949,-136,4},
{1061997773,-132,4},
{1069547520,-128,4},
},
{
{2.52886223793,-92,16},
{2.1133685112,-84,16},
{-3.34782242775,-76,16},
}
)
end

function HS18()
	 Main0()
end

function HS19()
	 Main0()
end

function Main20()
SN = gg.choice({
	 "南山科技园",
	 "伦敦",
	 "航母舰",
	 "试炼道场",
	 "中东小镇",
	 "返回主页",
}, nil, "")
if SN==1 then
	 Main21()
end
if SN==2 then
	 Main25()
end
if SN==3 then
	 Main29()
end
if SN==4 then
	 Main33()
end
if SN==5 then
	 Main38()
end
if SN==6 then
	 a()
end
FX1=0
end

function Main21()
SN = gg.choice({
	 "房顶",
	 "目标点",
	 "返回主页",
}, nil, "")
if SN==1 then
	 HS22()
end
if SN==2 then
	 HS23()
end
if SN==3 then
	 HS24()
end
FX1=0
end

function HS22()
editData(
{
{4},
{"南山科技园房顶"},
{925353388,4},
{1060439283,-140,4},
{1036831949,-136,4},
{1061997773,-132,4},
{1069547520,-128,4},
},
{
{1.89274442196,-92,16},
{2.92312312126,-84,16},
{3.12017464638,-76,16},
}
)
end

function HS23()
editData(
{
{4},
{"南山科技园目标点"},
{925353388,4},
{1060439283,-140,4},
{1036831949,-136,4},
{1061997773,-132,4},
{1069547520,-128,4},
},
{
{2.06299853325,-92,16},
{-2.6058204174,-84,16},
{2.55424809456,-76,16},
}
)
end

function HS24()
	 Main0()
end

function Main25()
SN = gg.choice({
	 "房顶",
	 "目标点",
	 "返回主页",
}, nil, "")
if SN==1 then
	 HS26()
end
if SN==2 then
	 HS27()
end
if SN==3 then
	 a()
end
FX1=0
end

function HS26()
editData(
{
{4},
{"伦敦房顶"},
{925353388,4},
{1060439283,-140,4},
{1036831949,-136,4},
{1061997773,-132,4},
{1069547520,-128,4},
},
{
{-2.57441687584,-92,16},
{3.26632070541,-84,16},
{3.0066139698,-76,16},
}
)
end

function HS27()
editData(
{
{4},
{"伦敦目标点"},
{925353388,4},
{1060439283,-140,4},
{1036831949,-136,4},
{1061997773,-132,4},
{1069547520,-128,4},
},
{
{-2.58520531654,-92,16},
{2.79563975334,-84,16},
{-2.55912184715,-76,16},
}
)
end

function HS28()
	 Main0()
end

function Main29()
SN = gg.choice({
	 "房顶",
	 "目标点",
	 "返回主页",
}, nil, "")
if SN==1 then
	 HS30()
end
if SN==2 then
	 HS31()
end
if SN==3 then
	 a()
end
FX1=0
end

function HS30()
editData(
{
{4},
{"航母舰房顶"},
{925353388,4},
{1060439283,-140,4},
{1036831949,-136,4},
{1061997773,-132,4},
{1069547520,-128,4},
},
{
{-3.18936157227,-92,16},
{3.14315295219,-84,16},
{-3.06227827072,-76,16},
}
)
end

function HS31()
editData(
{
{4},
{"航母舰目标点"},
{925353388,4},
{1060439283,-140,4},
{1036831949,-136,4},
{1061997773,-132,4},
{1069547520,-128,4},
},
{
{-3.24055790901,-92,16},
{-2.1336517334,-84,16},
{2.49084854126,-76,16},
}
)
end

function HS32()
	 Main0()
end

function Main33()
SN = gg.choice({
	 "房顶",
	 "目标点",
	 "返回主页",
}, nil, "")
if SN==1 then
	 HS35()
end
if SN==2 then
	 HS36()
end
if SN==3 then
	 a()
end
FX1=0
end

function HS35()
editData(
{
{4},
{"试炼道场房顶"},
{925353388,4},
{1060439283,-140,4},
{1036831949,-136,4},
{1061997773,-132,4},
{1069547520,-128,4},
},
{
{2.51693201065,-92,16},
{3.23375940323,-84,16},
{2.37853074074,-76,16},
}
)
end

function HS36()
editData(
{
{4},
{"试炼道场目标点"},
{925353388,4},
{1060439283,-140,4},
{1036831949,-136,4},
{1061997773,-132,4},
{1069547520,-128,4},
},
{
{2.51274752617,-92,16},
{2.201130867,-84,16},
{2.33716773987,-76,16},
}
)
end

function HS37()
	 Main0()
end

function Main38()
SN = gg.choice({
	 "房顶",
	 "柱子内",
	 "柱子外",
	 "返回主页",
}, nil, "")
if SN==1 then
	 HS39()
end
if SN==2 then
	 HS40()
end
if SN==3 then
	 HS41()
end
if SN==4 then
	 a()
end
FX1=0
end

function HS39()
editData(
{
{4},
{"中东小镇房顶"},
{925353388,4},
{1060439283,-140,4},
{1036831949,-136,4},
{1061997773,-132,4},
{1069547520,-128,4},
},
{
{3.59854459763,-92,16},
{3.19505858421,-84,16},
{3.82996034622,-76,16},
}
)
end

function HS40()
editData(
{
{4},
{"中东小镇目标点中心"},
{925353388,4},
{1060439283,-140,4},
{1036831949,-136,4},
{1061997773,-132,4},
{1069547520,-128,4},
},
{
{3.59791898727,-92,16},
{2.71607208252,-84,16},
{3.83015608788,-76,16},
}
)
end

function HS41()
editData(
{
{4},
{"中东小镇目标点外"},
{925353388,4},
{1060439283,-140,4},
{1036831949,-136,4},
{1061997773,-132,4},
{1069547520,-128,4},
},
{
{3.59791898727,-92,16},
{2.71607208252,-84,16},
{3.82015608788,-76,16},
}
)
end

function xswlnm()
	 Main0()
end

function HS42()
	 Main0()
end

function Main48()
SN = gg.choice({
	 "未来城",
	 "华尔街",
	 "金田城",
	 "返回主页",
}, nil, "")
if SN==1 then
	 Main49()
end
if SN==2 then
	 Main54()
end
if SN==3 then
	 Main59()
end
if SN==4 then
	 a()
end
FX1=0
end

function Main49()
SN = gg.choice({
	 "飞机上",
	 "目标点A",
	 "目标点B",
	 "返回主页",
}, nil, "")
if SN==1 then
	 HS50()
end
if SN==2 then
	 HS51()
end
if SN==3 then
	 HS52()
end
if SN==4 then
	 a()
end
FX1=0
end

function HS50()
editData(
{
{4},
{"未来城飞机上方"},
{925353388,4},
{1060439283,-140,4},
{1036831949,-136,4},
{1061997773,-132,4},
{1069547520,-128,4},
},
{
{3.45524501801,-92,16},
{3.18473529816,-84,16},
{-1.94761502743,-76,16},
}
)
end

function HS51()
editData(
{
{4},
{"未来城目标点A"},
{925353388,4},
{1060439283,-140,4},
{1036831949,-136,4},
{1061997773,-132,4},
{1069547520,-128,4},
},
{
{3.08943939209,-92,16},
{2.6145401001,-84,16},
{-2.80539560318,-76,16},
}
)
end

function HS52()
editData(
{
{4},
{"未来城目标点B"},
{925353388,4},
{1060439283,-140,4},
{1036831949,-136,4},
{1061997773,-132,4},
{1069547520,-128,4},
},
{
{-3.08150792122,-92,16},
{2.66603469849,-84,16},
{-2.65480923653,-76,16},
}
)
end

function HS53()
	 Main0()
end

function Main54()
SN = gg.choice({
	 "目标点A",
	 "目标点A房顶",
	 "防守老家房顶",
	 "返回主页",
}, nil, "")
if SN==1 then
	 HS55()
end
if SN==2 then
	 HS56()
end
if SN==3 then
	 HS57()
end
if SN==4 then
	 a()
end
FX1=0
end

function HS55()
editData(
{
{4},
{"华尔街目标点A"},
{925353388,4},
{1060439283,-140,4},
{1036831949,-136,4},
{1061997773,-132,4},
{1069547520,-128,4},
},
{
{3.0328001976,-92,16},
{2.03043961525,-84,16},
{-2.58352780342,-76,16},
}
)
end

function HS56()
editData(
{
{4},
{"华尔街目标点A房顶"},
{925353388,4},
{1060439283,-140,4},
{1036831949,-136,4},
{1061997773,-132,4},
{1069547520,-128,4},
},
{
{3.01467466354,-92,16},
{3.19084024429,-84,16},
{-3.00798749924,-76,16},
}
)
end

function HS57()
editData(
{
{4},
{"华尔街防守老家房顶"},
{925353388,4},
{1060439283,-140,4},
{1036831949,-136,4},
{1061997773,-132,4},
{1069547520,-128,4},
},
{
{-2.71324801445,-92,16},
{3.16431117058,-84,16},
{3.52173280716,-76,16},
}
)
end

function HS58()
	 Main0()
end

function Main59()
SN = gg.choice({
	 "目标点A",
	 "目标点A地下",
	 "防守老家房顶",
	 "返回主页",
}, nil, "")
if SN==1 then
	 HS60()
end
if SN==2 then
	 HS61()
end
if SN==3 then
	 HS62()
end
if SN==4 then
	 a()
end
FX1=0
end

function HS60()
editData(
{
{4},
{"金田城目标点A"},
{925353388,4},
{1060439283,-140,4},
{1036831949,-136,4},
{1061997773,-132,4},
{1069547520,-128,4},
},
{
{3.18275356293,-92,16},
{2.32924413681,-84,16},
{-3.4980711937,-76,16},
}
)
end

function HS61()
editData(
{
{4},
{"金田城目标点A下方"},
{925353388,4},
{1060439283,-140,4},
{1036831949,-136,4},
{1061997773,-132,4},
{1069547520,-128,4},
},
{
{3.18546152115,-92,16},
{2.03500509262,-84,16},
{-3.49942040443,-76,16},
}
)
end

function HS62()
editData(
{
{4},
{"防守老家房顶"},
{925353388,4},
{1060439283,-140,4},
{1036831949,-136,4},
{1061997773,-132,4},
{1069547520,-128,4},
},
{
{2.13074231148,-92,16},
{3.06211423874,-84,16},
{-2.48837018013,-76,16},
}
)
end


  function b()
SN = gg.choice({
	 "哈普苏特神殿¹",
	 "哈普苏特神殿²",
	 "莫斯科1",
	 "莫斯科2",
	 "南山科技园",
  "伦敦",
  "航母舰",
  "试炼道场",
  "中东小镇",
  "金田城",
  "华尔街",
  "未来城",
	 "返回上一页",
}, nil, "专属脚本")
if SN==1 then
	 hpssd1()
end
if SN==2 then
	 hpssd2()
end
if SN==3 then
	 msk1()
end
if SN==4 then
	 msk2()
end
if SN==5 then
	 nskjy()
end
if SN==6 then
	 ld()
end
if SN==7 then
	 hmj()
end
if SN==8 then
	 sldc()
end
if SN==9 then
	 zdxza()
end
if SN==10 then
	 jtcaa()
end
if SN==11 then
	 hejbb()
end
if SN==12 then
	 wlccc()
end
if SN==13 then
	 Main()
end
FX1=0
end
function hpssd1()
  if gg.choice({
    "哈普苏特神殿①",
  }, nil, "---请选择地图---") == 1 then
    qa()
  end
  GY = -1
  sddw()
end

function qa()
    L_x = -1.89061570168
    L_z = -1.68648116589
    L_y = -2.68863272667
  end

function sddw()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber("0.70710676908F;0.10000000149F;0.80000001192F;1.5F;1D;10D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy + 24,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_x
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 32,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_z
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 40,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_y
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end



function hpssd2()
  if gg.choice({
    "哈普苏特神殿²",
  }, nil, "---请选择地图---") == 1 then
    ws()
  end
  GY = -1
  qq()
end
function ws()
    L_x = 2.50552177429
    L_z = 1.98719215393
    L_y = 3.38724064827
  end
  
  
function qq()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber("0.70710676908F;0.10000000149F;0.80000001192F;1.5F;1D;10D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy + 24,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_x
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 32,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_z
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 40,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_y
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end



function msk1()
  if gg.choice({
    "莫斯科1",
  }, nil, "---请选择地图---") == 1 then
    ed()
  end
  GY = -1
  ww()
end

function ed()
    L_x = 2.87280154228
    L_z = -1.70364010334
    L_y = -2.59215092659
  end

function ww()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber("0.70710676908F;0.10000000149F;0.80000001192F;1.5F;1D;10D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy + 24,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_x
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 32,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_z
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 40,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_y
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end



function msk2()
  if gg.choice({
    "莫斯科2",
  }, nil, "---请选择地图---") == 1 then
    rf()
  end
  GY = -1
  ee()
end

function rf()
    L_x = 2.52512383461
    L_z = 2.11336874962
    L_y = -3.34570717812
  end

function ee()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber("0.70710676908F;0.10000000149F;0.80000001192F;1.5F;1D;10D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy + 24,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_x
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 32,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_z
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 40,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_y
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end



function nskjy()
  if gg.choice({
    "南山科技园",
  }, nil, "---请选择地图---") == 1 then
    tg()
  end
  GY = -1
  rr()
end

function tg()
    L_x = 1.95369374752
    L_z = -2.6058204174
    L_y = 2.54808402061
  end

function rr()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber("0.70710676908F;0.10000000149F;0.80000001192F;1.5F;1D;10D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy + 24,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_x
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 32,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_z
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 40,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_y
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end



function ld()
  if gg.choice({
    "伦敦",
  }, nil, "---请选择地图---") == 1 then
    zaq()
  end
  GY = -1
  xsw()
end

function zaq()
    L_x = -2.58346582413
    L_z = 2.79564285278
    L_y = -2.55587147713
  end

function xsw()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber("0.70710676908F;0.10000000149F;0.80000001192F;1.5F;1D;10D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy + 24,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_x
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 32,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_z
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 40,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_y
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end



function hmj()
  if gg.choice({
    "航母舰",
  }, nil, "---请选择地图---") == 1 then
    hmj1()
  end
  GY = -1
  hmj2()
end

function hmj1()
    L_x = -3.2546441555
    L_z = -2.25019757271
    L_y = 2.10468411446
  end

function hmj2()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber("0.70710676908F;0.10000000149F;0.80000001192F;1.5F;1D;10D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy + 24,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_x
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 32,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_z
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 40,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_y
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end



function sldc()
  if gg.choice({
    "试炼道场",
  }, nil, "---请选择地图---") == 1 then
    sldc1()
  end
  GY = -1
  sldc2()
end

function sldc1()
    L_x = 2.51400279999
    L_z = 2.20113062859
    L_y = 2.32426214218
end

function sldc2()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber("0.70710676908F;0.10000000149F;0.80000001192F;1.5F;1D;10D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy + 24,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_x
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 32,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_z
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 40,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_y
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end



function zdxza()
  if gg.choice({
    "中东小镇",
  }, nil, "---请选择地图---") == 1 then
    zdxz1()
  end
  GY = -1
  zdxz2()
end

function zdxz1()
    L_x = 3.59791898727
    L_z = 2.71607208252
    L_y = 3.83015608788
  end
  
function zdxz2()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber("0.70710676908F;0.10000000149F;0.80000001192F;1.5F;1D;10D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy + 24,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_x
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 32,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_z
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 40,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_y
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end



 function jtcaa()
SN = gg.choice({
  "金田城目标点",
  "金田城点2",
  "金田城点3",
  "金田城点4",
  "金田城点5",
  "金田城点6",
  "金田城点7",
  "金田城点8",
  "金田城点9",
  "金田城点10",
  "金田城点11",
  "金田城点12",
  "金田城点13",
	 "返回上一页",
}, nil, "专属脚本")
if SN==1 then
	 xbwsf1()
end
if SN==2 then
	 xbwsf2()
end
if SN==3 then
	 xbwsf3()
end
if SN==4 then
	 xbwsf4()
end
if SN==5 then
  xbwsfa1()
end
if SN==6 then
  xbwsfa2()
end 
if SN==7 then
  xbwsfa3()
end
if SN==8 then
  xbwsfa4()
end
if SN==9 then
  xbwsfa5()
end
if SN==10 then
  xbwsfa6()
end
if SN==11 then
  xbwsfa7()
end
if SN==12 then
  xbwsfa8()
end
if SN==13 then
  xbwsfa9()
end
if SN==14 then
	 xbwsf5()
end
FX1=0
end

function xbwsf1()
  if gg.choice({
    "金田城",
  }, nil, "---请选择地图---") == 1 then
    xbwsf6()
  end
  GY = -1
  xbwsf7()
end

function xbwsf6()
    L_x = 3.18308353424
    L_z = 2.32924413681
    L_y = -3.49151658058
  end

function xbwsf7()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber("0.70710676908F;0.10000000149F;0.80000001192F;1.5F;1D;10D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy + 24,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_x
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 32,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_z
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 40,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_y
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end



function xbwsf2()
  if gg.choice({
    "金田城2",
  }, nil, "---请选择地图---") == 1 then
    xbwsf8()
  end
  GY = -1
  xbwsf9()
end

function xbwsf8()
    L_x = 3.32546152115
    L_z = 2.03500509262
    L_y = -3.49942040443
  end

function xbwsf9()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber("0.70710676908F;0.10000000149F;0.80000001192F;1.5F;1D;10D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy + 24,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_x
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 32,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_z
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 40,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_y
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end



function xbwsf3()
  if gg.choice({
    "金田城3",
  }, nil, "---请选择地图---") == 1 then
    xbwsf10()
  end
  GY = -1
  xbwsf11()
end

function xbwsf10()
    L_x = 3.29546152115
    L_z = 2.05500509262
    L_y = -3.4542040443
  end

function xbwsf11()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber("0.70710676908F;0.10000000149F;0.80000001192F;1.5F;1D;10D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy + 24,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_x
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 32,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_z
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 40,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_y
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end



function xbwsf4()
  if gg.choice({
    "金田城4",
  }, nil, "---请选择地图---") == 1 then
    xbwsf12()
  end
  GY = -1
  xbwsf13()
end

function xbwsf12()
    L_x = 3.29546152115
    L_z = 2.05500509262
    L_y = -3.4042040443
  end

function xbwsf13()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber("0.70710676908F;0.10000000149F;0.80000001192F;1.5F;1D;10D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy + 24,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_x
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 32,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_z
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 40,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_y
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end



function xbwsfa1()
  if gg.choice({
    "金田城5",
  }, nil, "---请选择地图---") == 1 then
    xbwsf14()
  end
  GY = -1
  xbwsf15()
end

function xbwsf14()
    L_x = 3.29546152115
    L_z = 2.05500509262
    L_y = -3.3542040443
  end

function xbwsf15()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber("0.70710676908F;0.10000000149F;0.80000001192F;1.5F;1D;10D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy + 24,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_x
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 32,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_z
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 40,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_y
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end



function xbwsfa2()
  if gg.choice({
    "金田城6",
  }, nil, "---请选择地图---") == 1 then
    xbwsf16()
  end
  GY = -1
  xbwsf17()
end

function xbwsf16()
    L_x = 3.29546152115
    L_z = 2.05500509262
    L_y = -3.2842040443
  end

function xbwsf17()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber("0.70710676908F;0.10000000149F;0.80000001192F;1.5F;1D;10D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy + 24,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_x
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 32,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_z
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 40,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_y
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end



function xbwsfa3()
  if gg.choice({
    "金田城7",
  }, nil, "---请选择地图---") == 1 then
    xbwsf18()
  end
  GY = -1
  xbwsf19()
end

function xbwsf18()
    L_x = 3.23546152115
    L_z = 2.05500509262
    L_y = -3.2842040443
  end

function xbwsf19()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber("0.70710676908F;0.10000000149F;0.80000001192F;1.5F;1D;10D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy + 24,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_x
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 32,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_z
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 40,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_y
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end



function xbwsfa4()
  if gg.choice({
    "金田城8",
  }, nil, "---请选择地图---") == 1 then
    xbwsf20()
  end
  GY = -1
  xbwsf21()
end

function xbwsf20()
    L_x = 3.10546152115
    L_z = 2.05500509262
    L_y = -3.2842040443
  end

function xbwsf21()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber("0.70710676908F;0.10000000149F;0.80000001192F;1.5F;1D;10D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy + 24,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_x
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 32,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_z
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 40,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_y
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end



function xbwsfa5()
  if gg.choice({
    "金田城9",
  }, nil, "---请选择地图---") == 1 then
    xbwsf22()
  end
  GY = -1
  xbwsf23()
end

function xbwsf22()
    L_x = 2.90546152115
    L_z = 2.05500509262
    L_y = -3.2842040443
  end

function xbwsf23()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber("0.70710676908F;0.10000000149F;0.80000001192F;1.5F;1D;10D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy + 24,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_x
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 32,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_z
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 40,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_y
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end



function xbwsfa6()
  if gg.choice({
    "金田城10",
  }, nil, "---请选择地图---") == 1 then
    xbwsf24()
  end
  GY = -1
  xbwsf25()
end

function xbwsf24()
    L_x = 2.60546152115
    L_z = 2.05500509262
    L_y = -3.2842040443
  end

function xbwsf25()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber("0.70710676908F;0.10000000149F;0.80000001192F;1.5F;1D;10D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy + 24,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_x
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 32,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_z
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 40,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_y
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end



function xbwsfa7()
  if gg.choice({
    "金田城11",
  }, nil, "---请选择地图---") == 1 then
    xbwsf26()
  end
  GY = -1
  xbwsf27()
end

function xbwsf26()
    L_x = 2.40546152115
    L_z = 2.05500509262
    L_y = -3.2042040443
  end

function xbwsf27()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber("0.70710676908F;0.10000000149F;0.80000001192F;1.5F;1D;10D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy + 24,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_x
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 32,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_z
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 40,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_y
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end



function xbwsfa8()
  if gg.choice({
    "金田城12",
  }, nil, "---请选择地图---") == 1 then
    xbwsf28()
  end
  GY = -1
  xbwsf29()
end

function xbwsf28()
    L_x = 2.40546152115
    L_z = 2.05500509262
    L_y = -3.1042040443
  end

function xbwsf29()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber("0.70710676908F;0.10000000149F;0.80000001192F;1.5F;1D;10D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy + 24,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_x
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 32,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_z
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 40,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_y
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end



function xbwsfa9()
  if gg.choice({
    "金田城13",
  }, nil, "---请选择地图---") == 1 then
    xbwsf30()
  end
  GY = -1
  xbwsf31()
end

function xbwsf30()
    L_x = 2.40546152115
    L_z = 2.05500509262
    L_y = -2.9042040443
  end

function xbwsf31()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber("0.70710676908F;0.10000000149F;0.80000001192F;1.5F;1D;10D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy + 24,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_x
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 32,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_z
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 40,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_y
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end



function xbwsf5()
	 Main0()
end



  function hejbb()
SN = gg.choice({
  "华尔街目标点",
  "华尔街点2",
  "华尔街点3",
  "华尔街点4",
  "华尔街点5",
  "华尔街点6",
  "华尔街点7",
  "华尔街点8",
  "华尔街点9",
  "华尔街点10",
	 "返回上一页",
}, nil, "专属脚本")
if SN==1 then
	 xbwsfq1()
end
if SN==2 then
	 xbwsfq2()
end
if SN==3 then
	 xbwsfq3()
end
if SN==4 then
	 xbwsfq4()
end
if SN==5 then
  xbwsfaq1()
end
if SN==6 then
  xbwsfaq2()
end 
if SN==7 then
  xbwsfaq3()
end
if SN==8 then
  xbwsfaq4()
end
if SN==9 then
  xbwsfaq5()
end
if SN==10 then
  xbwsfaq6()
end
if SN==11 then
	 xbwsfq5()
end
FX1=0
end



function xbwsfq1()
  if gg.choice({
    "华尔街1",
  }, nil, "---请选择地图---") == 1 then
    xbwsfq6()
  end
  GY = -1
  xbwsfq7()
end

function xbwsfq6()
    L_x = 3.05192041397
    L_z = 2.03043961525
    L_y = -2.50481357574
  end

function xbwsfq7()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber("0.70710676908F;0.10000000149F;0.80000001192F;1.5F;1D;10D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy + 24,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_x
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 32,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_z
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 40,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_y
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end



function xbwsfq2()
  if gg.choice({
    "华尔街2",
  }, nil, "---请选择地图---") == 1 then
    xbwsfq8()
  end
  GY = -1
  xbwsfq9()
end

function xbwsfq8()
    L_x = 3.05192041397
    L_z = 2.03043961525
    L_y = 2.60173280716
  end

function xbwsfq9()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber("0.70710676908F;0.10000000149F;0.80000001192F;1.5F;1D;10D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy + 24,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_x
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 32,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_z
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 40,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_y
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end



function xbwsfq3()
  if gg.choice({
    "华尔街3",
  }, nil, "---请选择地图---") == 1 then
    xbwsfq10()
  end
  GY = -1
  xbwsfq11()
end

function xbwsfq10()
    L_x = 3.05192041397
    L_z = 2.03043961525
    L_y = 2.90173280716
  end

function xbwsfq11()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber("0.70710676908F;0.10000000149F;0.80000001192F;1.5F;1D;10D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy + 24,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_x
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 32,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_z
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 40,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_y
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end



function xbwsfq4()
  if gg.choice({
    "华尔街4",
  }, nil, "---请选择地图---") == 1 then
    xbwsfq12()
  end
  GY = -1
  xbwsfq13()
end

function xbwsfq12()
    L_x = 2.90192041397
    L_z = 2.03043961525
    L_y = 3.05173280716
  end

function xbwsfq13()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber("0.70710676908F;0.10000000149F;0.80000001192F;1.5F;1D;10D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy + 24,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_x
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 32,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_z
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 40,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_y
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end



function xbwsfaq1()
  if gg.choice({
    "华尔街5",
  }, nil, "---请选择地图---") == 1 then
    xbwsfq14()
  end
  GY = -1
  xbwsfq15()
end

function xbwsfq14()
    L_x = 2.60192041397
    L_z = 2.03043961525
    L_y = 3.05173280716
  end

function xbwsfq15()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber("0.70710676908F;0.10000000149F;0.80000001192F;1.5F;1D;10D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy + 24,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_x
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 32,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_z
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 40,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_y
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end



function xbwsfaq2()
  if gg.choice({
    "华尔街6",
  }, nil, "---请选择地图---") == 1 then
    xbwsfq16()
  end
  GY = -1
  xbwsfq17()
end

function xbwsfq16()
    L_x = -2.10192041397
    L_z = 2.03043961525
    L_y = 3.05173280716
  end

function xbwsfq17()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber("0.70710676908F;0.10000000149F;0.80000001192F;1.5F;1D;10D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy + 24,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_x
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 32,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_z
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 40,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_y
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end



function xbwsfaq3()
  if gg.choice({
    "华尔街7",
  }, nil, "---请选择地图---") == 1 then
    xbwsfq18()
  end
  GY = -1
  xbwsfq19()
end

function xbwsfq18()
    L_x = -2.700192041397
    L_z = 2.03043961525
    L_y = 3.15173280716
  end

function xbwsfq19()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber("0.70710676908F;0.10000000149F;0.80000001192F;1.5F;1D;10D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy + 24,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_x
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 32,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_z
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 40,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_y
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end



function xbwsfaq4()
  if gg.choice({
    "华尔街8",
  }, nil, "---请选择地图---") == 1 then
    xbwsfq20()
  end
  GY = -1
  xbwsfq21()
end

function xbwsfq20()
    L_x = -2.700192041397
    L_z = 2.03043961525
    L_y = 3.25173280716
  end

function xbwsfq21()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber("0.70710676908F;0.10000000149F;0.80000001192F;1.5F;1D;10D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy + 24,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_x
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 32,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_z
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 40,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_y
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end



function xbwsfaq5()
  if gg.choice({
    "华尔街9",
  }, nil, "---请选择地图---") == 1 then
    xbwsfq22()
  end
  GY = -1
  xbwsfq23()
end

function xbwsfq22()
    L_x = -2.700192041397
    L_z = 2.03043961525
    L_y = 3.30173280716
  end

function xbwsfq23()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber("0.70710676908F;0.10000000149F;0.80000001192F;1.5F;1D;10D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy + 24,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_x
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 32,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_z
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 40,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_y
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end



function xbwsfaq6()
  if gg.choice({
    "华尔街10",
  }, nil, "---请选择地图---") == 1 then
    xbwsfq24()
  end
  GY = -1
  xbwsfq25()
end

function xbwsfq24()
    L_x = -2.700192041397
    L_z = 2.03043961525
    L_y = 3.38173280716
  end

function xbwsfq25()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber("0.70710676908F;0.10000000149F;0.80000001192F;1.5F;1D;10D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy + 24,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_x
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 32,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_z
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 40,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_y
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end



function xbwsfq5()
	 Main0()
end



  function wlccc()
SN = gg.choice({
  "未来城目标点",
  "未来城点2",
  "未来城点3",
  "未来城点4",
  "未来城点5",
  "未来城点6",
  "未来城点7",
  "未来城点8",
  "未来城点9",
  "未来城点10",
  "未来城点11",
  "未来城点12",
  "未来城点13",
  "未来城点14",
	 "返回上一页",
}, nil, "专属脚本")
if SN==1 then
	 yhxbsxd1()
end
if SN==2 then
	 yhxbsxd2()
end
if SN==3 then
	 yhxbsxd3()
end
if SN==4 then
	 yhxbsxd4()
end
if SN==5 then
  yhxbsxd5()
end
if SN==6 then
  yhxbsxd6()
end 
if SN==7 then
  yhxbsxd7()
end
if SN==8 then
  yhxbsxd8()
end
if SN==9 then
  yhxbsxd9()
end
if SN==10 then
  yhxbsxd10()
end
if SN==11 then
  yhxbsxd11()
end
if SN==12 then
  yhxbsxd12()
end
if SN==13 then
  yhxbsxd13()
end
if SN==14 then
  yhxbsxd14()
end
if SN==15 then
	 yhxbsxd15()
end
FX1=0
end



function yhxbsxd1()
  if gg.choice({
    "未来城",
  }, nil, "---请选择地图---") == 1 then
    wlcyh1()
  end
  GY = -1
  wlcyh2()
end

function wlcyh1()
    L_x = 3.36076116562
    L_z = 2.60404014587
    L_y = 2.44309639931
  end

function wlcyh2()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber("0.70710676908F;0.10000000149F;0.80000001192F;1.5F;1D;10D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy + 24,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_x
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 32,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_z
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 40,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_y
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end



function yhxbsxd2()
  if gg.choice({
    "未来城2",
  }, nil, "---请选择地图---") == 1 then
    wlcyh3()
  end
  GY = -1
  wlcyh4()
end

function wlcyh3()
    L_x = 3.36076116562
    L_z = 2.60404014587
    L_y = -2.50309639931
  end

function wlcyh4()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber("0.70710676908F;0.10000000149F;0.80000001192F;1.5F;1D;10D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy + 24,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_x
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 32,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_z
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 40,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_y
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end



function yhxbsxd3()
  if gg.choice({
    "未来城3",
  }, nil, "---请选择地图---") == 1 then
    wlcyh5()
  end
  GY = -1
  wlcyh6()
end

function wlcyh5()
    L_x = 3.36076116562
    L_z = 2.60404014587
    L_y = -2.80309639931
  end

function wlcyh6()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber("0.70710676908F;0.10000000149F;0.80000001192F;1.5F;1D;10D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy + 24,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_x
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 32,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_z
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 40,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_y
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end



function yhxbsxd4()
  if gg.choice({
    "未来城4",
  }, nil, "---请选择地图---") == 1 then
    wlcyh7()
  end
  GY = -1
  wlcyh8()
end

function wlcyh7()
    L_x = 3.30076116562
    L_z = 2.60404014587
    L_y = -2.80309639931
  end

function wlcyh8()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber("0.70710676908F;0.10000000149F;0.80000001192F;1.5F;1D;10D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy + 24,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_x
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 32,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_z
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 40,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_y
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end



function yhxbsxd5()
  if gg.choice({
    "未来城5",
  }, nil, "---请选择地图---") == 1 then
    wlcyh9()
  end
  GY = -1
  wlcyh10()
end

function wlcyh9()
    L_x = 3.20076116562
    L_z = 2.60404014587
    L_y = -2.80309639931
  end

function wlcyh10()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber("0.70710676908F;0.10000000149F;0.80000001192F;1.5F;1D;10D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy + 24,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_x
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 32,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_z
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 40,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_y
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end



function yhxbsxd6()
  if gg.choice({
    "未来城6",
  }, nil, "---请选择地图---") == 1 then
    wlcyh11()
  end
  GY = -1
  wlcyh12()
end

function wlcyh11()
    L_x = 3.08076116562
    L_z = 2.60404014587
    L_y = -2.80309639931
  end

function wlcyh12()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber("0.70710676908F;0.10000000149F;0.80000001192F;1.5F;1D;10D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy + 24,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_x
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 32,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_z
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 40,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_y
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end



function yhxbsxd7()
  if gg.choice({
    "未来城7",
  }, nil, "---请选择地图---") == 1 then
    wlcyh13()
  end
  GY = -1
  wlcyh14()
end

function wlcyh13()
    L_x = 3.08076116562
    L_z = 2.60404014587
    L_y = -2.98309639931
  end

function wlcyh14()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber("0.70710676908F;0.10000000149F;0.80000001192F;1.5F;1D;10D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy + 24,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_x
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 32,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_z
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 40,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_y
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end



function yhxbsxd8()
  if gg.choice({
    "未来城8",
  }, nil, "---请选择地图---") == 1 then
    wlcyh15()
  end
  GY = -1
  wlcyh16()
end

function wlcyh15()
    L_x = 2.95076116562
    L_z = 2.60404014587
    L_y = -2.98309639931
  end

function wlcyh16()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber("0.70710676908F;0.10000000149F;0.80000001192F;1.5F;1D;10D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy + 24,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_x
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 32,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_z
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 40,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_y
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end



function yhxbsxd9()
  if gg.choice({
    "未来城9",
  }, nil, "---请选择地图---") == 1 then
    wlcyh17()
  end
  GY = -1
  wlcyh18()
end

function wlcyh17()
    L_x = 2.75076116562
    L_z = 2.60404014587
    L_y = -2.98309639931
  end

function wlcyh18()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber("0.70710676908F;0.10000000149F;0.80000001192F;1.5F;1D;10D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy + 24,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_x
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 32,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_z
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 40,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_y
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end



function yhxbsxd10()
  if gg.choice({
    "未来城10",
  }, nil, "---请选择地图---") == 1 then
    wlcyh19()
  end
  GY = -1
  wlcyh20()
end

function wlcyh19()
    L_x = 2.40076116562
    L_z = 2.60404014587
    L_y = -2.98309639931
  end

function wlcyh20()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber("0.70710676908F;0.10000000149F;0.80000001192F;1.5F;1D;10D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy + 24,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_x
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 32,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_z
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 40,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_y
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end



function yhxbsxd11()
  if gg.choice({
    "未来城11",
  }, nil, "---请选择地图---") == 1 then
    wlcyh21()
  end
  GY = -1
  wlcyh22()
end

function wlcyh21()
    L_x = 2.30076116562
    L_z = 2.60404014587
    L_y = -2.80309639931
  end

function wlcyh22()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber("0.70710676908F;0.10000000149F;0.80000001192F;1.5F;1D;10D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy + 24,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_x
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 32,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_z
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 40,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_y
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end



function yhxbsxd12()
  if gg.choice({
    "未来城12",
  }, nil, "---请选择地图---") == 1 then
    wlcyh23()
  end
  GY = -1
  wlcyh24()
end

function wlcyh23()
    L_x = -2.50076116562
    L_z = 2.60404014587
    L_y = -2.80309639931
  end

function wlcyh24()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber("0.70710676908F;0.10000000149F;0.80000001192F;1.5F;1D;10D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy + 24,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_x
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 32,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_z
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 40,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_y
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end



function yhxbsxd13()
  if gg.choice({
    "未来城13",
  }, nil, "---请选择地图---") == 1 then
    wlcyh25()
  end
  GY = -1
  wlcyh26()
end

function wlcyh25()
    L_x = -2.80076116562
    L_z = 2.70404014587
    L_y = -2.70309639931
  end

function wlcyh26()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber("0.70710676908F;0.10000000149F;0.80000001192F;1.5F;1D;10D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy + 24,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_x
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 32,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_z
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 40,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_y
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end



function yhxbsxd14()
  if gg.choice({
    "未来城14",
  }, nil, "---请选择地图---") == 1 then
    wlcyh27()
  end
  GY = -1
  wlcyh28()
end

function wlcyh27()
    L_x = -3.05076116562
    L_z = 2.70404014587
    L_y = -2.70309639931
  end

function wlcyh28()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber("0.70710676908F;0.10000000149F;0.80000001192F;1.5F;1D;10D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy + 24,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_x
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 32,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_z
      }
    })
    gg.addListItems({
      [1] = {
        address = dzy + 40,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = L_y
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end



function Exit()
print("小冰吸人整理")
os.exit()
end
cs = "951498768"



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









