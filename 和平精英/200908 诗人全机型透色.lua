function Main()
menu = gg.choice({
"💐透视专区💐",
"💐上色专区💐",
"💐退出脚本💐",
}, nil, "💐诗人💐")
if menu == 1 then A() end
if menu == 2 then C() end
if menu == 3 then G() end 
XGCK=-1
end

function A() 
ts = gg.choice({
"💐理论通用透视💐",  
"💐骁龙通用透视💐",      
"💐骁龙625透视💐",
"💐骁龙660透视💐",
"💐骁龙835透视💐",    
"💐骁龙845透视💐",
"💐骁龙710透视💐",
"💐骁龙636透视💐",
"💐骁龙820透视💐",
},nil,"💐诗人💐")
if ts == 1 then a1() end
if ts == 2 then a2() end
if ts == 3 then a3() end
if ts == 4 then a4() end
if ts == 5 then a5() end
if ts == 6 then a6() end
if ts == 7 then a7() end
if ts == 8 then a8() end
if ts == 9 then a9() end
end

function a1()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("-8.3252823e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 2 then
  else
    gg.getResults(gg.getResultCount())
    gg.editAll("4444", gg.TYPE_FLOAT)
  end
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4.9068373e21;-3.5875931e-39;4.8699618e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then
  else
    gg.searchNumber("-3.5875931e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(gg.getResultCount())
    gg.editAll("4444", gg.TYPE_FLOAT)
  end
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.0544113e21;-3.4039221e-39;4.8699607e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then
  else
    gg.searchNumber("-3.4039221e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(gg.getResultCount())
    gg.editAll("4444", gg.TYPE_FLOAT)
  end
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4.7223665e21;-8.3246237e-40;4.8330515e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then
  else
    gg.searchNumber("-8.3246237e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(gg.getResultCount())
    gg.editAll("4444", gg.TYPE_FLOAT)
  end
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4.7408149e21;-5.5695588e-40;4.814603e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then
  else
    gg.searchNumber("-5.5695588e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(gg.getResultCount())
    gg.editAll("4444", gg.TYPE_FLOAT)
gg.toast("通用透视开启成功")
end
end

function a2()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.setVisible(false)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.setVisible(false)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.setVisible(false)
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.setVisible(false)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.setVisible(false)
  gg.searchNumber("9.2432029e-40;1.1079927e-39;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.setVisible(false)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(15)
  gg.editAll("100", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.setVisible(false)
  gg.searchNumber("2.25000166893;2.718519e-43;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.setVisible(false)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("100", gg.TYPE_FLOAT)
gg.toast("骁龙透视开启成功")
end

function a3()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2;2.718519e-43", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
   gg.clearResults()
   gg.searchNumber("2;5.8013756e-42;1.8947657e-40;2.8130226e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
gg.toast("625透视开启成功")
end

function a4()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.8013756e-42;4.7408166e21;5.6896623e-29;4.7961574e21;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4.8699472e21;2.718519e-43;1.3912525e-19;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
gg.toast("660透视开启成功")
end

function a5()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2", 16)
gg.searchAddress("A00", 4294967295)
if gg.getResultCount() >= 1 then
  gg.getResults(4)
  gg.editAll("120", 16)
  gg.toast("第一步成功")
else
  gg.toast("第一步失败")
end
gg.clearResults()
gg.searchNumber("2", 16)
gg.searchAddress("804", 4294967295)
if gg.getResultCount() >= 1 then
  gg.getResults(2)
  gg.editAll("120", 16)
  gg.toast("第二步成功")
else
  gg.toast("第二步失败")
end
gg.clearResults()
gg.searchNumber("2", 16)
gg.searchAddress("504", 4294967295)
if gg.getResultCount() >= 1 then
  gg.getResults(3)
  gg.editAll("120", 16)
  gg.toast("第三步成功")
else
  gg.toast("第三步失败")
end
gg.clearResults()
gg.searchNumber("2", 16)
gg.searchAddress("C80", 4294967295)
if gg.getResultCount() >= 1 then
  gg.getResults(2)
  gg.editAll("120", 16)
  gg.toast("透视成功")
else
end
gg.toast("透视成功")
end
  
  
function a6()
gg.clearResults()
gg.searchNumber("5.3680222e21;1.3312335e-43;1.3912563e-19;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4.8146053e21;2.8866748e-43;1.3912556e-19;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.201992e21;4.4028356e-29;2.25000452995;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("加载中...")
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4.9252857e21;6.488138e-40;4.9252863e21;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("1.0761972e-42;4.5920551e-41;-1.7632415e-38;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("1.0761972e-42;4.5923353e-41;-1.7632457e-38;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.3311276e21;1.3312335e-43;1.391256e-19;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4.8146041e21;2.8866748e-43;1.3912537e-19;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("1.1202013e-19;1.1202017e-19;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("9999", gg.TYPE_FLOAT)
gg.toast("845透视开启成功")
end

function a7()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("5.3680222e21;1.3312335e-43;1.3912563e-19;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("120", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("4.8146053e21;2.8866748e-43;1.3912556e-19;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("120", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("5.201992e21;4.4028356e-29;2.25000452995;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("120", gg.TYPE_FLOAT)
gg.toast("加载中...")
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("4.9252857e21;6.488138e-40;4.9252863e21;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("120", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1.0761972e-42;4.5920551e-41;-1.7632415e-38;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("120", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1.0761972e-42;4.5923353e-41;-1.7632457e-38;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("120", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("5.3311276e21;1.3312335e-43;1.391256e-19;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("120", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("4.8146041e21;2.8866748e-43;1.3912537e-19;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("120", gg.TYPE_FLOAT)
gg.toast("710透视开启成功")
end

function a8()
gg.clearResults()
    gg.setRanges(gg.REGION_BAD | 0)
    gg.searchNumber("135,215D;4,140D;3.7615819e-37;2::", gg.TYPE_FLOAT | 0, false, gg.SIGN_EQUAL | 0, 0, -1)
    gg.searchNumber("2", gg.TYPE_FLOAT | 0, false, gg.SIGN_EQUAL | 0, 0, -1)
    gg.getResults(10)
    gg.editAll("130", gg.TYPE_FLOAT | 0)
    gg.toast("50%")
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD | 0)
    gg.searchNumber("194D;3.7615819e-37;2;-1;1;-127::", gg.TYPE_FLOAT | 0, false, gg.SIGN_EQUAL | 0, 0, -1)
    gg.searchNumber("2", gg.TYPE_FLOAT | 0, false, gg.SIGN_EQUAL | 0, 0, -1)
    gg.getResults(10)
    gg.editAll("130", gg.TYPE_FLOAT | 0)
gg.toast("636透视开启成功")
end

function a9()
  gg.clearResults()
    gg.setRanges(gg.REGION_BAD | 0)
    gg.searchNumber("135,215D;4,140D;3.7615819e-37;2::", gg.TYPE_FLOAT | 0, false, gg.SIGN_EQUAL | 0, 0, -1)
    gg.searchNumber("2", gg.TYPE_FLOAT | 0, false, gg.SIGN_EQUAL | 0, 0, -1)
    gg.getResults(10)
    gg.editAll("130", gg.TYPE_FLOAT | 0)
    gg.toast("50%")
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD | 0)
    gg.searchNumber("194D;3.7615819e-37;2;-1;1;-127::", gg.TYPE_FLOAT | 0, false, gg.SIGN_EQUAL | 0, 0, -1)
    gg.searchNumber("2", gg.TYPE_FLOAT | 0, false, gg.SIGN_EQUAL | 0, 0, -1)
    gg.getResults(10)
    gg.editAll("130", gg.TYPE_FLOAT | 0)
gg.toast("820透视开启成功")
end

function C()
ts = gg.choice({
"💐上色—红💐",
"💐上色—绿💐",
"💐上色—蓝💐",
"💐上色—白💐",
"💐骁龙835上色💐",
"💐骁龙845上色💐",
"💐透视防闪💐",
},nil,"💐诗人💐")
if ts == 1 then c1() end
if ts == 2 then c2() end
if ts == 3 then c3() end
if ts == 4 then c4() end
if ts == 5 then c5() end
if ts == 6 then c6() end
if ts == 7 then c7() end
end
function c1()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1,661,566,999;96;539,246,604;8200::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("7", gg.TYPE_DWORD)
gg.toast("红色开启成功")
end

function c2()
  gg.clearResults()
  gg.setRanges(bit32.bxor(gg.REGION_BAD))
  gg.searchNumber("7.1054274e-15", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("7.1054274e-15", gg.TYPE_FLOAT, false, gg.SIGN_DOUBLE, 0, -1)
  gg.searchAddress("3E0", 4294967295)
  gg.getResults(100)
  gg.editAll("7.1054274e-24", gg.TYPE_FLOAT)
gg.toast("绿色开启成功")
end

function c3()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1,661,566,999;8200;671,236,108;536,887,311", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("10", gg.TYPE_DWORD)
gg.toast("蓝色开启成功")
end

function c4()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("1152;128;16::150", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1152", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("16", gg.TYPE_DWORD)
gg.toast("白色开启成功")
end

function c5()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("96;539,246,604;8200;1,194,380,058::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("6", gg.TYPE_DWORD)
gg.toast("高清黄色开启成功")
end
 
function c6() 
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1,661,566,999;96;539,246,604;8200::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("7", gg.TYPE_DWORD)
gg.toast("845上色开启成功")
end
  
function c7()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("6D;9D;1.1202017e-19;2;", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.toast('透视防闪开启成功')
end


            
function G()
print("💐诗人💐")
os.exit()
end

cs = '💐诗人💐'
while(true)
do
  if gg.isVisible(true) then
    XGCK=1
    gg.setVisible(false) 
  end 
  gg.clearResults()
  if XGCK==1 then Main() end
end
  
